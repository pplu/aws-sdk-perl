
package Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplate;
  use Moose;
  has ApprovalRuleTemplateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'approvalRuleTemplateName' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositoriesForApprovalRuleTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplate - Arguments for method ListRepositoriesForApprovalRuleTemplate on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositoriesForApprovalRuleTemplate on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListRepositoriesForApprovalRuleTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositoriesForApprovalRuleTemplate.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListRepositoriesForApprovalRuleTemplateOutput =
      $codecommit->ListRepositoriesForApprovalRuleTemplate(
      ApprovalRuleTemplateName => 'MyApprovalRuleTemplateName',
      MaxResults               => 1,                              # OPTIONAL
      NextToken                => 'MyNextToken',                  # OPTIONAL
      );

    # Results:
    my $NextToken = $ListRepositoriesForApprovalRuleTemplateOutput->NextToken;
    my $RepositoryNames =
      $ListRepositoriesForApprovalRuleTemplateOutput->RepositoryNames;

# Returns a L<Paws::CodeCommit::ListRepositoriesForApprovalRuleTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListRepositoriesForApprovalRuleTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApprovalRuleTemplateName => Str

The name of the approval rule template for which you want to list
repositories that are associated with that template.



=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositoriesForApprovalRuleTemplate in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

