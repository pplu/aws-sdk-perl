package Paws::MQ::SanitizationWarning;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', request_name => 'attributeName', traits => ['NameInRequest']);
  has ElementName => (is => 'ro', isa => 'Str', request_name => 'elementName', traits => ['NameInRequest']);
  has Reason => (is => 'ro', isa => 'Str', request_name => 'reason', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::SanitizationWarning

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::SanitizationWarning object:

  $service_obj->Method(Att1 => { AttributeName => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::SanitizationWarning object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeName

=head1 DESCRIPTION

Returns information about the XML element or attribute that was
sanitized in the configuration.

=head1 ATTRIBUTES


=head2 AttributeName => Str

  The name of the XML attribute that has been sanitized.


=head2 ElementName => Str

  The name of the XML element that has been sanitized.


=head2 Reason => Str

  Required. The reason for which the XML elements or attributes were
sanitized.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

