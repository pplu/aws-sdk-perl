# Generated from default/object.tt
package Paws::CodeDeploy::RevisionLocation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_RawString CodeDeploy_GitHubLocation CodeDeploy_S3Location CodeDeploy_AppSpecContent/;
  has AppSpecContent => (is => 'ro', isa => CodeDeploy_AppSpecContent);
  has GitHubLocation => (is => 'ro', isa => CodeDeploy_GitHubLocation);
  has RevisionType => (is => 'ro', isa => Str);
  has S3Location => (is => 'ro', isa => CodeDeploy_S3Location);
  has String => (is => 'ro', isa => CodeDeploy_RawString);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AppSpecContent' => {
                                     'type' => 'CodeDeploy_AppSpecContent',
                                     'class' => 'Paws::CodeDeploy::AppSpecContent'
                                   },
               'String' => {
                             'type' => 'CodeDeploy_RawString',
                             'class' => 'Paws::CodeDeploy::RawString'
                           },
               'S3Location' => {
                                 'type' => 'CodeDeploy_S3Location',
                                 'class' => 'Paws::CodeDeploy::S3Location'
                               },
               'GitHubLocation' => {
                                     'type' => 'CodeDeploy_GitHubLocation',
                                     'class' => 'Paws::CodeDeploy::GitHubLocation'
                                   },
               'RevisionType' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'String' => 'string',
                       'AppSpecContent' => 'appSpecContent',
                       'S3Location' => 's3Location',
                       'RevisionType' => 'revisionType',
                       'GitHubLocation' => 'gitHubLocation'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::RevisionLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::RevisionLocation object:

  $service_obj->Method(Att1 => { AppSpecContent => $value, ..., String => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::RevisionLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->AppSpecContent

=head1 DESCRIPTION

Information about the location of an application revision.

=head1 ATTRIBUTES


=head2 AppSpecContent => CodeDeploy_AppSpecContent

  The content of an AppSpec file for an AWS Lambda or Amazon ECS
deployment. The content is formatted as JSON or YAML and stored as a
RawString.


=head2 GitHubLocation => CodeDeploy_GitHubLocation

  Information about the location of application artifacts stored in
GitHub.


=head2 RevisionType => Str

  The type of application revision:

=over

=item *

S3: An application revision stored in Amazon S3.

=item *

GitHub: An application revision stored in GitHub (EC2/On-premises
deployments only).

=item *

String: A YAML-formatted or JSON-formatted string (AWS Lambda
deployments only).

=back



=head2 S3Location => CodeDeploy_S3Location

  Information about the location of a revision stored in Amazon S3.


=head2 String => CodeDeploy_RawString

  Information about the location of an AWS Lambda deployment revision
stored as a RawString.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

