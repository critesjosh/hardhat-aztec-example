use aave_bridge::AaveBridge;
use aztec::protocol::address::{AztecAddress, EthAddress};
use aztec::protocol::traits::FromField;
use aztec::test::helpers::test_environment::TestEnvironment;

#[test]
unconstrained fn test_constructor() {
    let mut env = TestEnvironment::new();
    let deployer = env.create_light_account();

    let token = AztecAddress::from_field(1);
    let portal = EthAddress::from_field(2);

    let initializer = AaveBridge::interface().constructor(token, portal);
    let _contract_address =
        env.deploy("@aave_bridge/AaveBridge").with_public_initializer(deployer, initializer);
}
