# Generated from json/callargs_class.tt

package Paws::CodeBuild::CreateWebhook;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_WebhookFilter/;
  has BranchFilter => (is => 'ro', isa => Str, predicate => 1);
  has FilterGroups => (is => 'ro', isa => ArrayRef[ArrayRef[CodeBuild_WebhookFilter]], predicate => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateWebhook');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeBuild::CreateWebhookOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FilterGroups' => {
                                   'type' => 'ArrayRef[ArrayRef[CodeBuild_WebhookFilter]]',
                                   'class' => 'Paws::CodeBuild::WebhookFilter'
                                 },
               'ProjectName' => {
                                  'type' => 'Str'
                                },
               'BranchFilter' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'ProjectName' => 1
                  },
  'NameInRequest' => {
                       'FilterGroups' => 'filterGroups',
                       'ProjectName' => 'projectName',
                       'BranchFilter' => 'branchFilter'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateWebhook - Arguments for method CreateWebhook on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWebhook on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method CreateWebhook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWebhook.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $CreateWebhookOutput = $codebuild->CreateWebhook(
      ProjectName  => 'MyProjectName',
      BranchFilter => 'MyString',        # OPTIONAL
      FilterGroups => [
        [
          {
            Pattern => 'MyString',
            Type    => 'EVENT'
            ,   # values: EVENT, BASE_REF, HEAD_REF, ACTOR_ACCOUNT_ID, FILE_PATH
            ExcludeMatchedPattern => 1,    # OPTIONAL
          },
          ...
        ],
        ...
      ],                                   # OPTIONAL
    );

    # Results:
    my $Webhook = $CreateWebhookOutput->Webhook;

    # Returns a L<Paws::CodeBuild::CreateWebhookOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/CreateWebhook>

=head1 ATTRIBUTES


=head2 BranchFilter => Str

A regular expression used to determine which repository branches are
built when a webhook is triggered. If the name of a branch matches the
regular expression, then it is built. If C<branchFilter> is empty, then
all branches are built.

It is recommended that you use C<filterGroups> instead of
C<branchFilter>.



=head2 FilterGroups => ArrayRef[ArrayRef[CodeBuild_WebhookFilter]]

An array of arrays of C<WebhookFilter> objects used to determine which
webhooks are triggered. At least one C<WebhookFilter> in the array must
specify C<EVENT> as its C<type>.

For a build to be triggered, at least one filter group in the
C<filterGroups> array must pass. For a filter group to pass, each of
its filters must pass.



=head2 B<REQUIRED> ProjectName => Str

The name of the AWS CodeBuild project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWebhook in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

