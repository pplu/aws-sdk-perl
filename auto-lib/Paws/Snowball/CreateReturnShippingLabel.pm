
package Paws::Snowball::CreateReturnShippingLabel;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has ShippingOption => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReturnShippingLabel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CreateReturnShippingLabelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateReturnShippingLabel - Arguments for method CreateReturnShippingLabel on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReturnShippingLabel on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method CreateReturnShippingLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReturnShippingLabel.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    my $CreateReturnShippingLabelResult = $snowball->CreateReturnShippingLabel(
      JobId          => 'MyJobId',
      ShippingOption => 'SECOND_DAY',    # OPTIONAL
    );

    # Results:
    my $Status = $CreateReturnShippingLabelResult->Status;

    # Returns a L<Paws::Snowball::CreateReturnShippingLabelResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/CreateReturnShippingLabel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID for a job that you want to create the return shipping label for.
For example C<JID123e4567-e89b-12d3-a456-426655440000>.



=head2 ShippingOption => Str

The shipping speed for a particular job. This speed doesn't dictate how
soon the device is returned to AWS. This speed represents how quickly
it moves to its destination while in transit. Regional shipping speeds
are as follows:

Valid values are: C<"SECOND_DAY">, C<"NEXT_DAY">, C<"EXPRESS">, C<"STANDARD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReturnShippingLabel in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

