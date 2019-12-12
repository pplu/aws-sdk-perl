
package Paws::SSM::GetCalendarState;
  use Moose;
  has AtTime => (is => 'ro', isa => 'Str');
  has CalendarNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCalendarState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetCalendarStateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCalendarState - Arguments for method GetCalendarState on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCalendarState on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetCalendarState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCalendarState.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetCalendarStateResponse = $ssm->GetCalendarState(
      CalendarNames => [ 'MyCalendarNameOrARN', ... ],
      AtTime        => 'MyISO8601String',                # OPTIONAL
    );

    # Results:
    my $AtTime             = $GetCalendarStateResponse->AtTime;
    my $NextTransitionTime = $GetCalendarStateResponse->NextTransitionTime;
    my $State              = $GetCalendarStateResponse->State;

    # Returns a L<Paws::SSM::GetCalendarStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetCalendarState>

=head1 ATTRIBUTES


=head2 AtTime => Str

(Optional) The specific time for which you want to get calendar state
information, in ISO 8601 (https://en.wikipedia.org/wiki/ISO_8601)
format. If you do not add C<AtTime>, the current time is assumed.



=head2 B<REQUIRED> CalendarNames => ArrayRef[Str|Undef]

The names or Amazon Resource Names (ARNs) of the Systems Manager
documents that represent the calendar entries for which you want to get
the state.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCalendarState in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

