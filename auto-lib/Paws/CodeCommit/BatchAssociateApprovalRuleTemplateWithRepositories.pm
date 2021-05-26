
package Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositories;
  use Moose;
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateName' , required => 1);
  has RepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'repositoryNames' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchAssociateApprovalRuleTemplateWithRepositories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositories - Arguments for method BatchAssociateApprovalRuleTemplateWithRepositories on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchAssociateApprovalRuleTemplateWithRepositories on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method BatchAssociateApprovalRuleTemplateWithRepositories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchAssociateApprovalRuleTemplateWithRepositories.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $BatchAssociateApprovalRuleTemplateWithRepositoriesOutput =
      $codecommit->BatchAssociateApprovalRuleTemplateWithRepositories(
      ApprovalRuleTemplateName => 'MyApprovalRuleTemplateName',
      RepositoryNames          => [
        'MyRepositoryName', ...    # min: 1, max: 100
      ],

      );

    # Results:
    my $AssociatedRepositoryNames =
      $BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
      ->AssociatedRepositoryNames;
    my $Errors =
      $BatchAssociateApprovalRuleTemplateWithRepositoriesOutput->Errors;

# Returns a L<Paws::CodeCommit::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/BatchAssociateApprovalRuleTemplateWithRepositories>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateName => Str

The name of the template you want to associate with one or more
repositories.



=head2 B<REQUIRED> RepositoryNames => ArrayRef[Str|Undef]

The names of the repositories you want to associate with the template.

The length constraint limit is for each string in the array. The array
itself can be empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchAssociateApprovalRuleTemplateWithRepositories in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

