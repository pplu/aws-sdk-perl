package Paws::SMS::ServerReplicationParameters;
  use Moose;
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Frequency => (is => 'ro', isa => 'Int', request_name => 'frequency', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has LicenseType => (is => 'ro', isa => 'Str', request_name => 'licenseType', traits => ['NameInRequest']);
  has NumberOfRecentAmisToKeep => (is => 'ro', isa => 'Int', request_name => 'numberOfRecentAmisToKeep', traits => ['NameInRequest']);
  has RunOnce => (is => 'ro', isa => 'Bool', request_name => 'runOnce', traits => ['NameInRequest']);
  has SeedTime => (is => 'ro', isa => 'Str', request_name => 'seedTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ServerReplicationParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ServerReplicationParameters object:

  $service_obj->Method(Att1 => { Encrypted => $value, ..., SeedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ServerReplicationParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->Encrypted

=head1 DESCRIPTION

Replication parameters for replicating a server.

=head1 ATTRIBUTES


=head2 Encrypted => Bool

  When true, the replication job produces encrypted AMIs. See also
C<KmsKeyId> below.


=head2 Frequency => Int

  Frequency of creating replication jobs for the server.


=head2 KmsKeyId => Str

  KMS key ID for replication jobs that produce encrypted AMIs. Can be any
of the following:

=over

=item *

KMS key ID

=item *

KMS key alias

=item *

ARN referring to KMS key ID

=item *

ARN referring to KMS key alias

=back

If encrypted is I<true> but a KMS key id is not specified, the
customer's default KMS key for EBS is used.


=head2 LicenseType => Str

  License type for creating a replication job for the server.


=head2 NumberOfRecentAmisToKeep => Int

  Number of recent AMIs to keep when creating a replication job for this
server.


=head2 RunOnce => Bool

  


=head2 SeedTime => Str

  Seed time for creating a replication job for the server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

