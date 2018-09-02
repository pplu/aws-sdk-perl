package Paws::XRay::SamplingRuleRecord;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has ModifiedAt => (is => 'ro', isa => 'Str');
  has SamplingRule => (is => 'ro', isa => 'Paws::XRay::SamplingRule');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::SamplingRuleRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::SamplingRuleRecord object:

  $service_obj->Method(Att1 => { CreatedAt => $value, ..., SamplingRule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::SamplingRuleRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedAt

=head1 DESCRIPTION

A SamplingRule and its metadata.

=head1 ATTRIBUTES


=head2 CreatedAt => Str

  When the rule was created.


=head2 ModifiedAt => Str

  When the rule was last modified.


=head2 SamplingRule => L<Paws::XRay::SamplingRule>

  The sampling rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

