
package Paws::ServiceCatalog::UpdateTagOption;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTagOption');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateTagOptionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateTagOption - Arguments for method UpdateTagOption on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTagOption on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateTagOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTagOption.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateTagOptionOutput = $servicecatalog->UpdateTagOption(
      Id     => 'MyTagOptionId',
      Active => 1,                     # OPTIONAL
      Value  => 'MyTagOptionValue',    # OPTIONAL
    );

    # Results:
    my $TagOptionDetail = $UpdateTagOptionOutput->TagOptionDetail;

    # Returns a L<Paws::ServiceCatalog::UpdateTagOptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateTagOption>

=head1 ATTRIBUTES


=head2 Active => Bool

The updated active state.



=head2 B<REQUIRED> Id => Str

The TagOption identifier.



=head2 Value => Str

The updated value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTagOption in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

