
package Paws::EC2::ImportSnapshot {
  use Moose;
  has ClientData => (is => 'ro', isa => 'Paws::EC2::ClientData');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DiskContainer => (is => 'ro', isa => 'Paws::EC2::SnapshotDiskContainer');
  has DryRun => (is => 'ro', isa => 'Bool');
  has RoleName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshot - Arguments for method ImportSnapshot on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportSnapshot on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ImportSnapshot.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ImportSnapshot.

As an example:

  $service_obj->ImportSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 ClientData => Paws::EC2::ClientData

  

=head2 ClientToken => Str

  

Token to enable idempotency for VM import requests (optional).










=head2 Description => Str

  

The description string for the ImportSnapshot task.










=head2 DiskContainer => Paws::EC2::SnapshotDiskContainer

  

=head2 DryRun => Bool

  

=head2 RoleName => Str

  

The name of the role to use when not using the default role name
'vmimport' (optional).












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

