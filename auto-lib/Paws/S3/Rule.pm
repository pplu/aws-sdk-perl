package Paws::S3::Rule;
  use Moose;
  has Expiration => (is => 'ro', isa => 'Paws::S3::LifecycleExpiration');
  has ID => (is => 'ro', isa => 'Str');
  has NoncurrentVersionExpiration => (is => 'ro', isa => 'Paws::S3::NoncurrentVersionExpiration');
  has NoncurrentVersionTransition => (is => 'ro', isa => 'Paws::S3::NoncurrentVersionTransition');
  has Prefix => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Transition => (is => 'ro', isa => 'Paws::S3::Transition');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Rule

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Rule object:

  $service_obj->Method(Att1 => { Expiration => $value, ..., Transition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Expiration

=head1 ATTRIBUTES

=head2 Expiration => Paws::S3::LifecycleExpiration

  

=head2 ID => Str

  Unique identifier for the rule. The value cannot be longer than 255
characters.

=head2 NoncurrentVersionExpiration => Paws::S3::NoncurrentVersionExpiration

  

=head2 NoncurrentVersionTransition => Paws::S3::NoncurrentVersionTransition

  

=head2 B<REQUIRED> Prefix => Str

  Prefix identifying one or more objects to which the rule applies.

=head2 B<REQUIRED> Status => Str

  If 'Enabled', the rule is currently being applied. If 'Disabled', the
rule is not currently being applied.

=head2 Transition => Paws::S3::Transition

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

