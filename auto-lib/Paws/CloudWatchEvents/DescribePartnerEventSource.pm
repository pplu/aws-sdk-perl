# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::DescribePartnerEventSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribePartnerEventSource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchEvents::DescribePartnerEventSourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribePartnerEventSource - Arguments for method DescribePartnerEventSource on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePartnerEventSource on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method DescribePartnerEventSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePartnerEventSource.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $DescribePartnerEventSourceResponse =
      $events->DescribePartnerEventSource(
      Name => 'MyEventSourceName',

      );

    # Results:
    my $Arn  = $DescribePartnerEventSourceResponse->Arn;
    my $Name = $DescribePartnerEventSourceResponse->Name;

# Returns a L<Paws::CloudWatchEvents::DescribePartnerEventSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/DescribePartnerEventSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the event source to display.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePartnerEventSource in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

