
package Paws::CloudDirectory::ListAppliedSchemaArns;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SchemaArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAppliedSchemaArns');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/applied');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListAppliedSchemaArnsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListAppliedSchemaArns - Arguments for method ListAppliedSchemaArns on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAppliedSchemaArns on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListAppliedSchemaArns.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAppliedSchemaArns.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListAppliedSchemaArnsResponse = $clouddirectory->ListAppliedSchemaArns(
      DirectoryArn => 'MyArn',
      MaxResults   => 1,                # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
      SchemaArn    => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListAppliedSchemaArnsResponse->NextToken;
    my $SchemaArns = $ListAppliedSchemaArnsResponse->SchemaArns;

    # Returns a L<Paws::CloudDirectory::ListAppliedSchemaArnsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListAppliedSchemaArns>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory you are listing.



=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 SchemaArn => Str

The response for C<ListAppliedSchemaArns> when this parameter is used
will list all minor version ARNs for a major version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAppliedSchemaArns in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

