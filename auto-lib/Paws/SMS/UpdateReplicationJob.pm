
package Paws::SMS::UpdateReplicationJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Frequency => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'frequency' );
  has LicenseType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'licenseType' );
  has NextReplicationRunStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextReplicationRunStartTime' );
  has ReplicationJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationJobId' , required => 1);
  has RoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateReplicationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::UpdateReplicationJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::UpdateReplicationJob - Arguments for method UpdateReplicationJob on Paws::SMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateReplicationJob on the 
AWS Server Migration Service service. Use the attributes of this class
as arguments to method UpdateReplicationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateReplicationJob.

As an example:

  $service_obj->UpdateReplicationJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str





=head2 Frequency => Int





=head2 LicenseType => Str



Valid values are: C<"AWS">, C<"BYOL">

=head2 NextReplicationRunStartTime => Str





=head2 B<REQUIRED> ReplicationJobId => Str





=head2 RoleName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateReplicationJob in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

