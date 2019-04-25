
package Paws::MTurk::GetHIT;
  use Moose;
  has HITId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::GetHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::GetHIT - Arguments for method GetHIT on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHIT on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method GetHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHIT.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $GetHITResponse = $mturk -requester->GetHIT(
      HITId => 'MyEntityId',

    );

    # Results:
    my $HIT = $GetHITResponse->HIT;

    # Returns a L<Paws::MTurk::GetHITResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/GetHIT>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HITId => Str

The ID of the HIT to be retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

