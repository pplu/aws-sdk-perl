package Paws::API::Builder::Endpoints::Partition {
  use MooseX::DataModel;

  key hostname => (isa => 'Str', required => 1);
  array protocols => (isa => 'Str', required => 1);
  array signatureVersions => (isa => 'Str', required => 1);
}
package Paws::API::Builder::Endponts {
  use MooseX::DataModel;

  array partitions => (isa => 'Paws::API::Builder::Endpoints::Partition', required => 1);
  key dnsSuffix => (isa => 'Str', required => 1);
  key partition => (isa => 'Str', required => 1);
  key partitionName => (isa => 'Str', required => 1);
  object regions => (isa => 'Paws::API::Builder::Endpoints::Region');

};
