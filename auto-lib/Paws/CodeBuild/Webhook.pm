# Generated from default/object.tt
package Paws::CodeBuild::Webhook;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_WebhookFilter/;
  has BranchFilter => (is => 'ro', isa => Str);
  has FilterGroups => (is => 'ro', isa => ArrayRef[ArrayRef[CodeBuild_WebhookFilter]]);
  has LastModifiedSecret => (is => 'ro', isa => Str);
  has PayloadUrl => (is => 'ro', isa => Str);
  has Secret => (is => 'ro', isa => Str);
  has Url => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LastModifiedSecret' => 'lastModifiedSecret',
                       'BranchFilter' => 'branchFilter',
                       'Secret' => 'secret',
                       'FilterGroups' => 'filterGroups',
                       'PayloadUrl' => 'payloadUrl',
                       'Url' => 'url'
                     },
  'types' => {
               'Url' => {
                          'type' => 'Str'
                        },
               'PayloadUrl' => {
                                 'type' => 'Str'
                               },
               'FilterGroups' => {
                                   'type' => 'ArrayRef[ArrayRef[CodeBuild_WebhookFilter]]',
                                   'class' => 'Paws::CodeBuild::WebhookFilter'
                                 },
               'Secret' => {
                             'type' => 'Str'
                           },
               'LastModifiedSecret' => {
                                         'type' => 'Str'
                                       },
               'BranchFilter' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Webhook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Webhook object:

  $service_obj->Method(Att1 => { BranchFilter => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Webhook object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchFilter

=head1 DESCRIPTION

Information about a webhook that connects repository events to a build
project in AWS CodeBuild.

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


=head2 LastModifiedSecret => Str

  A timestamp that indicates the last time a repository's secret token
was modified.


=head2 PayloadUrl => Str

  The AWS CodeBuild endpoint where webhook events are sent.


=head2 Secret => Str

  The secret token of the associated repository.

A Bitbucket webhook does not support C<secret>.


=head2 Url => Str

  The URL to the webhook.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

