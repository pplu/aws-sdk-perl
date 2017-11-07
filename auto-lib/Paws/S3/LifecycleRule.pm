package Paws::S3::LifecycleRule;
  use Moose;
  has AbortIncompleteMultipartUpload => (is => 'ro', isa => 'Paws::S3::AbortIncompleteMultipartUpload');
  has Expiration => (is => 'ro', isa => 'Paws::S3::LifecycleExpiration');
  has Filter => (is => 'ro', isa => 'Paws::S3::LifecycleRuleFilter');
  has ID => (is => 'ro', isa => 'Str');
  has NoncurrentVersionExpiration => (is => 'ro', isa => 'Paws::S3::NoncurrentVersionExpiration');
  has NoncurrentVersionTransitions => (is => 'ro', isa => 'ArrayRef[Paws::S3::NoncurrentVersionTransition]', request_name => 'NoncurrentVersionTransition', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Transitions => (is => 'ro', isa => 'ArrayRef[Paws::S3::Transition]', request_name => 'Transition', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::LifecycleRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::LifecycleRule object:

  $service_obj->Method(Att1 => { AbortIncompleteMultipartUpload => $value, ..., Transitions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::LifecycleRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AbortIncompleteMultipartUpload

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AbortIncompleteMultipartUpload => L<Paws::S3::AbortIncompleteMultipartUpload>

  


=head2 Expiration => L<Paws::S3::LifecycleExpiration>

  


=head2 Filter => L<Paws::S3::LifecycleRuleFilter>

  


=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.


=head2 NoncurrentVersionExpiration => L<Paws::S3::NoncurrentVersionExpiration>

  


=head2 NoncurrentVersionTransitions => ArrayRef[L<Paws::S3::NoncurrentVersionTransition>]

  


=head2 Prefix => Str

  Prefix identifying one or more objects to which the rule applies. This
is deprecated; use Filter instead.


=head2 B<REQUIRED> Status => Str

  If 'Enabled', the rule is currently being applied. If 'Disabled', the
rule is not currently being applied.


=head2 Transitions => ArrayRef[L<Paws::S3::Transition>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

