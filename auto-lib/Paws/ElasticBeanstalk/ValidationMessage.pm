package Paws::ElasticBeanstalk::ValidationMessage;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has Namespace => (is => 'ro', isa => 'Str');
  has OptionName => (is => 'ro', isa => 'Str');
  has Severity => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ValidationMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ValidationMessage object:

  $service_obj->Method(Att1 => { Message => $value, ..., Severity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ValidationMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

An error or warning for a desired configuration option value.

=head1 ATTRIBUTES


=head2 Message => Str

  A message describing the error or warning.


=head2 Namespace => Str

  The namespace to which the option belongs.


=head2 OptionName => Str

  The name of the option.


=head2 Severity => Str

  An indication of the severity of this message:

=over

=item *

C<error>: This message indicates that this is not a valid setting for
an option.

=item *

C<warning>: This message is providing information you should take into
account.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

