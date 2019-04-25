
package Paws::DS::DeleteTrust;
  use Moose;
  has DeleteAssociatedConditionalForwarder => (is => 'ro', isa => 'Bool');
  has TrustId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTrust');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DeleteTrustResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DeleteTrust - Arguments for method DeleteTrust on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTrust on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DeleteTrust.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTrust.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DeleteTrustResult = $ds->DeleteTrust(
      TrustId                              => 'MyTrustId',
      DeleteAssociatedConditionalForwarder => 1,             # OPTIONAL
    );

    # Results:
    my $TrustId = $DeleteTrustResult->TrustId;

    # Returns a L<Paws::DS::DeleteTrustResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DeleteTrust>

=head1 ATTRIBUTES


=head2 DeleteAssociatedConditionalForwarder => Bool

Delete a conditional forwarder as part of a DeleteTrustRequest.



=head2 B<REQUIRED> TrustId => Str

The Trust ID of the trust relationship to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTrust in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

