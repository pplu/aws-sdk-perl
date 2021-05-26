
package Paws::IoT::UpdateTopicRuleDestination;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTopicRuleDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/destinations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateTopicRuleDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateTopicRuleDestination - Arguments for method UpdateTopicRuleDestination on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTopicRuleDestination on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateTopicRuleDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTopicRuleDestination.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateTopicRuleDestinationResponse = $iot->UpdateTopicRuleDestination(
      Arn    => 'MyAwsArn',
      Status => 'ENABLED',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateTopicRuleDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the topic rule destination.



=head2 B<REQUIRED> Status => Str

The status of the topic rule destination. Valid values are:

=over

=item IN_PROGRESS

A topic rule destination was created but has not been confirmed. You
can set C<status> to C<IN_PROGRESS> by calling
C<UpdateTopicRuleDestination>. Calling C<UpdateTopicRuleDestination>
causes a new confirmation challenge to be sent to your confirmation
endpoint.

=item ENABLED

Confirmation was completed, and traffic to this destination is allowed.
You can set C<status> to C<DISABLED> by calling
C<UpdateTopicRuleDestination>.

=item DISABLED

Confirmation was completed, and traffic to this destination is not
allowed. You can set C<status> to C<ENABLED> by calling
C<UpdateTopicRuleDestination>.

=item ERROR

Confirmation could not be completed, for example if the confirmation
timed out. You can call C<GetTopicRuleDestination> for details about
the error. You can set C<status> to C<IN_PROGRESS> by calling
C<UpdateTopicRuleDestination>. Calling C<UpdateTopicRuleDestination>
causes a new confirmation challenge to be sent to your confirmation
endpoint.

=back


Valid values are: C<"ENABLED">, C<"IN_PROGRESS">, C<"DISABLED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTopicRuleDestination in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

