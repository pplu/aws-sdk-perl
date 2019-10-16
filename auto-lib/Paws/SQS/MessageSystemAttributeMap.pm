package Paws::SQS::MessageSystemAttributeMap;
  use Moo;
  with 'Paws::API::MapParser';

  use MooX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'Name');
  class_has xml_values =>(is => 'ro', default => 'Value');
  use Types::Standard qw/Str/;
  has ApproximateFirstReceiveTimestamp => (is => 'ro', isa => Str);
  has ApproximateReceiveCount => (is => 'ro', isa => Str);
  has MessageDeduplicationId => (is => 'ro', isa => Str);
  has MessageGroupId => (is => 'ro', isa => Str);
  has SenderId => (is => 'ro', isa => Str);
  has SentTimestamp => (is => 'ro', isa => Str);
  has SequenceNumber => (is => 'ro', isa => Str);

  sub params_map {
    our $Params_map ||= {
                    types => {
                               'ApproximateFirstReceiveTimestamp' => {
                                          type => 'Str',
                                        },
                               'ApproximateReceiveCount' => {
                                          type => 'Str',
                                        },
                               'MessageDeduplicationId' => {
                                          type => 'Str',
                                        },
                               'MessageGroupId' => {
                                          type => 'Str',
                                        },
                               'SenderId' => {
                                          type => 'Str',
                                        },
                               'SentTimestamp' => {
                                          type => 'Str',
                                        },
                               'SequenceNumber' => {
                                          type => 'Str',
                                        },
                             },
                  };
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SQS::MessageSystemAttributeMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SQS::MessageSystemAttributeMap object:

  $service_obj->Method(Att1 => { ApproximateFirstReceiveTimestamp => $value, ..., SequenceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SQS::MessageSystemAttributeMap object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateFirstReceiveTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ApproximateFirstReceiveTimestamp => 


=head2 ApproximateReceiveCount => 


=head2 MessageDeduplicationId => 


=head2 MessageGroupId => 


=head2 SenderId => 


=head2 SentTimestamp => 


=head2 SequenceNumber => 



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SQS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

