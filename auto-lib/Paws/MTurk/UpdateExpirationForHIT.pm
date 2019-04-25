
package Paws::MTurk::UpdateExpirationForHIT;
  use Moose;
  has ExpireAt => (is => 'ro', isa => 'Str', required => 1);
  has HITId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExpirationForHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::UpdateExpirationForHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::UpdateExpirationForHIT - Arguments for method UpdateExpirationForHIT on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExpirationForHIT on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method UpdateExpirationForHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExpirationForHIT.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $UpdateExpirationForHITResponse =
      $mturk -requester->UpdateExpirationForHIT(
      ExpireAt => '1970-01-01T01:00:00',
      HITId    => 'MyEntityId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/UpdateExpirationForHIT>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExpireAt => Str

The date and time at which you want the HIT to expire



=head2 B<REQUIRED> HITId => Str

The HIT to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExpirationForHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

