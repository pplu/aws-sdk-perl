package Paws::ElasticBeanstalk::OptionRestrictionRegex;
  use Moose;
  has Label => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::OptionRestrictionRegex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::OptionRestrictionRegex object:

  $service_obj->Method(Att1 => { Label => $value, ..., Pattern => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::OptionRestrictionRegex object:

  $result = $service_obj->Method(...);
  $result->Att1->Label

=head1 DESCRIPTION

A regular expression representing a restriction on a string
configuration option value.

=head1 ATTRIBUTES


=head2 Label => Str

  A unique name representing this regular expression.


=head2 Pattern => Str

  The regular expression pattern that a string configuration option value
with this restriction must match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

