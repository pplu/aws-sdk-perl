
package Paws::DS::DescribeDomainControllers;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has DomainControllerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomainControllers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeDomainControllersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeDomainControllers - Arguments for method DescribeDomainControllers on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomainControllers on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeDomainControllers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomainControllers.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeDomainControllersResult = $ds->DescribeDomainControllers(
      DirectoryId         => 'MyDirectoryId',
      DomainControllerIds => [ 'MyDomainControllerId', ... ],    # OPTIONAL
      Limit               => 1,                                  # OPTIONAL
      NextToken           => 'MyNextToken',                      # OPTIONAL
    );

    # Results:
    my $DomainControllers = $DescribeDomainControllersResult->DomainControllers;
    my $NextToken         = $DescribeDomainControllersResult->NextToken;

    # Returns a L<Paws::DS::DescribeDomainControllersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeDomainControllers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier of the directory for which to retrieve the domain controller
information.



=head2 DomainControllerIds => ArrayRef[Str|Undef]

A list of identifiers for the domain controllers whose information will
be provided.



=head2 Limit => Int

The maximum number of items to return.



=head2 NextToken => Str

The I<DescribeDomainControllers.NextToken> value from a previous call
to DescribeDomainControllers. Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomainControllers in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

