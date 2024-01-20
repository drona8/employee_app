enum Flavor { mock, dev, uat, prod }

class Config {
  Flavor appFlavor = Flavor.mock;
}
