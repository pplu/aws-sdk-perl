package Paws::SQS::AttributeMap;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');
  use Types::Standard qw/Str/;
  has ApproximateFirstReceiveTimestamp => (is => 'ro', isa => Str);
  has ApproximateReceiveCount => (is => 'ro', isa => Str);
  has SenderId => (is => 'ro', isa => Str);
  has SentTimestamp => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'ApproximateFirstReceiveTimestamp' => {
                                          type => 'Str',
                                        },
                               'ApproximateReceiveCount' => {
                                          type => 'Str',
                                        },
                               'SenderId' => {
                                          type => 'Str',
                                        },
                               'SentTimestamp' => {
                                          type => 'Str',
                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::AttributeMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::AttributeMap object:

  $service_obj->Method(Att1 => { ApproximateFirstReceiveTimestamp => $value, ..., SentTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::AttributeMap object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateFirstReceiveTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ApproximateFirstReceiveTimestamp => 


=head2 ApproximateReceiveCount => 


=head2 SenderId => 


=head2 SentTimestamp => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

