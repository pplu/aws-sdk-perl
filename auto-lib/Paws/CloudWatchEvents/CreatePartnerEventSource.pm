# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::CreatePartnerEventSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has Account => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreatePartnerEventSource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchEvents::CreatePartnerEventSourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Account' => 1,
                    'Name' => 1
                  },
  'types' => {
               'Account' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::CreatePartnerEventSource - Arguments for method CreatePartnerEventSource on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePartnerEventSource on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method CreatePartnerEventSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePartnerEventSource.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $CreatePartnerEventSourceResponse = $events->CreatePartnerEventSource(
      Account => 'MyAccountId',
      Name    => 'MyEventSourceName',

    );

    # Results:
    my $EventSourceArn = $CreatePartnerEventSourceResponse->EventSourceArn;

 # Returns a L<Paws::CloudWatchEvents::CreatePartnerEventSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/CreatePartnerEventSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Account => Str

The AWS account ID of the customer who is permitted to create a
matching partner event bus for this partner event source.



=head2 B<REQUIRED> Name => Str

The name of the partner event source. This name must be unique and must
be in the format C< I<partner_name>/I<event_namespace>/I<event_name> >.
The AWS account that wants to use this partner event source must create
a partner event bus with a name that matches the name of the partner
event source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePartnerEventSource in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

