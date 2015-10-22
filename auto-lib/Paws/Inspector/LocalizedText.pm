package Paws::Inspector::LocalizedText;
  use Moose;
  has Key => (is => 'ro', isa => 'Paws::Inspector::LocalizedTextKey', xmlname => 'key', request_name => 'key', traits => ['Unwrapped','NameInRequest']);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Parameter]', xmlname => 'parameters', request_name => 'parameters', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::LocalizedText

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::LocalizedText object:

  $service_obj->Method(Att1 => { Key => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::LocalizedText object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The textual identifier. This data type is used as the request parameter
in the LocalizeText action.

=head1 ATTRIBUTES

=head2 Key => L<Paws::Inspector::LocalizedTextKey>

  The facility and id properties of the LocalizedTextKey data type.

=head2 Parameters => ArrayRef[L<Paws::Inspector::Parameter>]

  Values for the dynamic elements of the string specified by the textual
identifier.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

