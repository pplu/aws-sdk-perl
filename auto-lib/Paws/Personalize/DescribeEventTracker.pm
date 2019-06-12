
package Paws::Personalize::DescribeEventTracker;
  use Moose;
  has EventTrackerArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'eventTrackerArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventTracker');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::DescribeEventTrackerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeEventTracker - Arguments for method DescribeEventTracker on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventTracker on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method DescribeEventTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventTracker.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $DescribeEventTrackerResponse = $personalize->DescribeEventTracker(
      EventTrackerArn => 'MyArn',

    );

    # Results:
    my $EventTracker = $DescribeEventTrackerResponse->EventTracker;

    # Returns a L<Paws::Personalize::DescribeEventTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/DescribeEventTracker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventTrackerArn => Str

The Amazon Resource Name (ARN) of the event tracker to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventTracker in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

