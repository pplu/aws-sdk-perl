# Generated from default/map_enum.tt
package Paws::SQS::MessageBodySystemAttributeMap;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');
  use Types::Standard qw//;
  use Paws::SQS::Types qw/SQS_MessageSystemAttributeValue/;
  has AWSTraceHeader => (is => 'ro', isa => SQS_MessageSystemAttributeValue);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'AWSTraceHeader' => {
                                          type => 'SQS_MessageSystemAttributeValue',                                          class => 'Paws::SQS::MessageSystemAttributeValue',                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::MessageBodySystemAttributeMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::MessageBodySystemAttributeMap object:

  $service_obj->Method(Att1 => { AWSTraceHeader => $value, ..., AWSTraceHeader => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::MessageBodySystemAttributeMap object:

  $result = $service_obj->Method(...);
  $result->Att1->AWSTraceHeader

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AWSTraceHeader => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

