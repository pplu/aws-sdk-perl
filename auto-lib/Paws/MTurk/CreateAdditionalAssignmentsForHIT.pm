
package Paws::MTurk::CreateAdditionalAssignmentsForHIT;
  use Moose;
  has HITId => (is => 'ro', isa => 'Str', required => 1);
  has NumberOfAdditionalAssignments => (is => 'ro', isa => 'Int', required => 1);
  has UniqueRequestToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAdditionalAssignmentsForHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::CreateAdditionalAssignmentsForHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateAdditionalAssignmentsForHIT - Arguments for method CreateAdditionalAssignmentsForHIT on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAdditionalAssignmentsForHIT on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method CreateAdditionalAssignmentsForHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAdditionalAssignmentsForHIT.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $CreateAdditionalAssignmentsForHITResponse =
      $mturk -requester->CreateAdditionalAssignmentsForHIT(
      HITId                         => 'MyEntityId',
      NumberOfAdditionalAssignments => 1,
      UniqueRequestToken            => 'MyIdempotencyToken',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/CreateAdditionalAssignmentsForHIT>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HITId => Str

The ID of the HIT to extend.



=head2 B<REQUIRED> NumberOfAdditionalAssignments => Int

The number of additional assignments to request for this HIT.



=head2 UniqueRequestToken => Str

A unique identifier for this request, which allows you to retry the
call on error without extending the HIT multiple times. This is useful
in cases such as network timeouts where it is unclear whether or not
the call succeeded on the server. If the extend HIT already exists in
the system from a previous call using the same C<UniqueRequestToken>,
subsequent calls will return an error with a message containing the
request ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAdditionalAssignmentsForHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

