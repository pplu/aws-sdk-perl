
use Paws::API;


package Paws::SDB {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'sdb');
  has version => (is => 'ro', isa => 'Str', default => '2009-04-15');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '1');

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V2Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::QueryCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::XMLResponse');

  
  sub BatchDeleteAttributes {
    my $self = shift;
    return $self->do_call('Paws::SDB::BatchDeleteAttributes', @_);
  }
  sub BatchPutAttributes {
    my $self = shift;
    return $self->do_call('Paws::SDB::BatchPutAttributes', @_);
  }
  sub CreateDomain {
    my $self = shift;
    return $self->do_call('Paws::SDB::CreateDomain', @_);
  }
  sub DeleteAttributes {
    my $self = shift;
    return $self->do_call('Paws::SDB::DeleteAttributes', @_);
  }
  sub DeleteDomain {
    my $self = shift;
    return $self->do_call('Paws::SDB::DeleteDomain', @_);
  }
  sub DomainMetadata {
    my $self = shift;
    return $self->do_call('Paws::SDB::DomainMetadata', @_);
  }
  sub GetAttributes {
    my $self = shift;
    return $self->do_call('Paws::SDB::GetAttributes', @_);
  }
  sub ListDomains {
    my $self = shift;
    return $self->do_call('Paws::SDB::ListDomains', @_);
  }
  sub PutAttributes {
    my $self = shift;
    return $self->do_call('Paws::SDB::PutAttributes', @_);
  }
  sub Select {
    my $self = shift;
    return $self->do_call('Paws::SDB::Select', @_);
  }
}
1;