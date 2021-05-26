
package Paws::DeviceFarm::ListTestGridSessions;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimeAfter' );
  has CreationTimeBefore => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimeBefore' );
  has EndTimeAfter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTimeAfter' );
  has EndTimeBefore => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTimeBefore' );
  has MaxResult => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResult' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestGridSessions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListTestGridSessionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridSessions - Arguments for method ListTestGridSessions on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestGridSessions on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListTestGridSessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestGridSessions.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $ListTestGridSessionsResult = $devicefarm->ListTestGridSessions(
      ProjectArn         => 'MyDeviceFarmArn',
      CreationTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      EndTimeAfter       => '1970-01-01T01:00:00',    # OPTIONAL
      EndTimeBefore      => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResult          => 1,                        # OPTIONAL
      NextToken          => 'MyPaginationToken',      # OPTIONAL
      Status             => 'ACTIVE',                 # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListTestGridSessionsResult->NextToken;
    my $TestGridSessions = $ListTestGridSessionsResult->TestGridSessions;

    # Returns a L<Paws::DeviceFarm::ListTestGridSessionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListTestGridSessions>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Return only sessions created after this time.



=head2 CreationTimeBefore => Str

Return only sessions created before this time.



=head2 EndTimeAfter => Str

Return only sessions that ended after this time.



=head2 EndTimeBefore => Str

Return only sessions that ended before this time.



=head2 MaxResult => Int

Return only this many results at a time.



=head2 NextToken => Str

Pagination token.



=head2 B<REQUIRED> ProjectArn => Str

ARN of a TestGridProject.



=head2 Status => Str

Return only sessions in this state.

Valid values are: C<"ACTIVE">, C<"CLOSED">, C<"ERRORED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestGridSessions in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

