
package Paws::Kendra::DescribeThesaurus;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeThesaurus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeThesaurusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeThesaurus - Arguments for method DescribeThesaurus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeThesaurus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeThesaurus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeThesaurus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeThesaurusResponse = $kendra->DescribeThesaurus(
      Id      => 'MyThesaurusId',
      IndexId => 'MyIndexId',

    );

    # Results:
    my $CreatedAt        = $DescribeThesaurusResponse->CreatedAt;
    my $Description      = $DescribeThesaurusResponse->Description;
    my $ErrorMessage     = $DescribeThesaurusResponse->ErrorMessage;
    my $FileSizeBytes    = $DescribeThesaurusResponse->FileSizeBytes;
    my $Id               = $DescribeThesaurusResponse->Id;
    my $IndexId          = $DescribeThesaurusResponse->IndexId;
    my $Name             = $DescribeThesaurusResponse->Name;
    my $RoleArn          = $DescribeThesaurusResponse->RoleArn;
    my $SourceS3Path     = $DescribeThesaurusResponse->SourceS3Path;
    my $Status           = $DescribeThesaurusResponse->Status;
    my $SynonymRuleCount = $DescribeThesaurusResponse->SynonymRuleCount;
    my $TermCount        = $DescribeThesaurusResponse->TermCount;
    my $UpdatedAt        = $DescribeThesaurusResponse->UpdatedAt;

    # Returns a L<Paws::Kendra::DescribeThesaurusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeThesaurus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of the thesaurus to describe.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index associated with the thesaurus to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeThesaurus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

