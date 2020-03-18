package Paws::Pinpoint::Template;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Template

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Template object:

  $service_obj->Method(Att1 => { Name => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Template object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Specifies the name and version of the message template to use for the
message.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the message template to use for the message. If specified,
this value must match the name of an existing message template.


=head2 Version => Str

  The unique identifier for the version of the message template to use
for the message. If specified, this value must match the identifier for
an existing template version. To retrieve a list of versions and
version identifiers for a template, use the

Template Versions resource.

If you don't specify a value for this property, Amazon Pinpoint uses
the I<active> version of the template. The I<active> version is
typically the version of a template that's been most recently reviewed
and approved for use, depending on your workflow. It isn't necessarily
the latest version of a template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

