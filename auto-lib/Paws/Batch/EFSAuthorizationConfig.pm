# Generated by default/object.tt
package Paws::Batch::EFSAuthorizationConfig;
  use Moose;
  has AccessPointId => (is => 'ro', isa => 'Str', request_name => 'accessPointId', traits => ['NameInRequest']);
  has Iam => (is => 'ro', isa => 'Str', request_name => 'iam', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::EFSAuthorizationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::EFSAuthorizationConfig object:

  $service_obj->Method(Att1 => { AccessPointId => $value, ..., Iam => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::EFSAuthorizationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessPointId

=head1 DESCRIPTION

The authorization configuration details for the Amazon EFS file system.

=head1 ATTRIBUTES


=head2 AccessPointId => Str

The Amazon EFS access point ID to use. If an access point is specified,
the root directory value specified in the C<EFSVolumeConfiguration>
must either be omitted or set to C</> which will enforce the path set
on the EFS access point. If an access point is used, transit encryption
must be enabled in the C<EFSVolumeConfiguration>. For more information,
see Working with Amazon EFS Access Points
(https://docs.aws.amazon.com/efs/latest/ug/efs-access-points.html) in
the I<Amazon Elastic File System User Guide>.


=head2 Iam => Str

Whether or not to use the AWS Batch execution IAM role defined in a job
definition when mounting the Amazon EFS file system. If enabled,
transit encryption must be enabled in the C<EFSVolumeConfiguration>. If
this parameter is omitted, the default value of C<DISABLED> is used.
For more information, see Using Amazon EFS Access Points
(https://docs.aws.amazon.com/batch/latest/ug/efs-volumes.html#efs-volume-accesspoints)
in the I<AWS Batch User Guide>. EFS IAM authorization requires that
C<TransitEncryption> be C<ENABLED> and that a C<JobRoleArn> is
specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

