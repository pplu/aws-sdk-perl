package Paws::SES::BulkEmailDestination;
  use Moose;
  has Destination => (is => 'ro', isa => 'Paws::SES::Destination', required => 1);
  has ReplacementTags => (is => 'ro', isa => 'ArrayRef[Paws::SES::MessageTag]');
  has ReplacementTemplateData => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::BulkEmailDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::BulkEmailDestination object:

  $service_obj->Method(Att1 => { Destination => $value, ..., ReplacementTemplateData => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::BulkEmailDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

An array that contains one or more Destinations, as well as the tags
and replacement data associated with each of those Destinations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => L<Paws::SES::Destination>

  


=head2 ReplacementTags => ArrayRef[L<Paws::SES::MessageTag>]

  A list of tags, in the form of name/value pairs, to apply to an email
that you send using C<SendBulkTemplatedEmail>. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.


=head2 ReplacementTemplateData => Str

  A list of replacement values to apply to the template. This parameter
is a JSON object, typically consisting of key-value pairs in which the
keys correspond to replacement tags in the email template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

