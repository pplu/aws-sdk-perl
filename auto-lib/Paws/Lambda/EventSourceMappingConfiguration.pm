
package Paws::Lambda::EventSourceMappingConfiguration;
  use Moose;
  has BatchSize => (is => 'ro', isa => 'Int');
  has EventSourceArn => (is => 'ro', isa => 'Str');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastProcessingResult => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateTransitionReason => (is => 'ro', isa => 'Str');
  has UUID => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::EventSourceMappingConfiguration

=head1 ATTRIBUTES


=head2 BatchSize => Int

The maximum number of items to retrieve in a single batch.


=head2 EventSourceArn => Str

The Amazon Resource Name (ARN) of the event source.


=head2 FunctionArn => Str

The ARN of the Lambda function.


=head2 LastModified => Str

The date that the event source mapping was last updated.


=head2 LastProcessingResult => Str

The result of the last AWS Lambda invocation of your Lambda function.


=head2 State => Str

The state of the event source mapping. It can be one of the following:
C<Creating>, C<Enabling>, C<Enabled>, C<Disabling>, C<Disabled>,
C<Updating>, or C<Deleting>.


=head2 StateTransitionReason => Str

The cause of the last state change, either C<User initiated> or
C<Lambda initiated>.


=head2 UUID => Str

The identifier of the event source mapping.


=head2 _request_id => Str


=cut

