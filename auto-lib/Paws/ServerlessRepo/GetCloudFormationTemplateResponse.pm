
package Paws::ServerlessRepo::GetCloudFormationTemplateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServerlessRepo::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has ExpirationTime => (is => 'ro', isa => Str);
  has SemanticVersion => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TemplateId => (is => 'ro', isa => Str);
  has TemplateUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'ExpirationTime' => {
                                     'type' => 'Str'
                                   },
               'TemplateUrl' => {
                                  'type' => 'Str'
                                },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'TemplateId' => {
                                 'type' => 'Str'
                               },
               'SemanticVersion' => {
                                      'type' => 'Str'
                                    }
             },
  'NameInRequest' => {
                       'ApplicationId' => 'applicationId',
                       'Status' => 'status',
                       'TemplateUrl' => 'templateUrl',
                       'ExpirationTime' => 'expirationTime',
                       'CreationTime' => 'creationTime',
                       'TemplateId' => 'templateId',
                       'SemanticVersion' => 'semanticVersion'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::GetCloudFormationTemplateResponse

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application Amazon Resource Name (ARN).


=head2 CreationTime => Str

The date and time this resource was created.


=head2 ExpirationTime => Str

The date and time this template expires. Templates expire 1 hour after
creation.


=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 Status => Str

Status of the template creation workflow.

Possible values: PREPARING | ACTIVE | EXPIRED

Valid values are: C<"PREPARING">, C<"ACTIVE">, C<"EXPIRED">
=head2 TemplateId => Str

The UUID returned by CreateCloudFormationTemplate.

Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}


=head2 TemplateUrl => Str

A link to the template that can be used to deploy the application using
AWS CloudFormation.


=head2 _request_id => Str


=cut

