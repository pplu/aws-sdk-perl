# Generated by default/object.tt
package Paws::GuardDuty::BucketLevelPermissions;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'Paws::GuardDuty::AccessControlList', request_name => 'accessControlList', traits => ['NameInRequest']);
  has BlockPublicAccess => (is => 'ro', isa => 'Paws::GuardDuty::BlockPublicAccess', request_name => 'blockPublicAccess', traits => ['NameInRequest']);
  has BucketPolicy => (is => 'ro', isa => 'Paws::GuardDuty::BucketPolicy', request_name => 'bucketPolicy', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::BucketLevelPermissions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::BucketLevelPermissions object:

  $service_obj->Method(Att1 => { AccessControlList => $value, ..., BucketPolicy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::BucketLevelPermissions object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlList

=head1 DESCRIPTION

Contains information about the bucket level permissions for the S3
bucket.

=head1 ATTRIBUTES


=head2 AccessControlList => L<Paws::GuardDuty::AccessControlList>

Contains information on how Access Control Policies are applied to the
bucket.


=head2 BlockPublicAccess => L<Paws::GuardDuty::BlockPublicAccess>

Contains information on which account level S3 Block Public Access
settings are applied to the S3 bucket.


=head2 BucketPolicy => L<Paws::GuardDuty::BucketPolicy>

Contains information on the bucket policies for the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

