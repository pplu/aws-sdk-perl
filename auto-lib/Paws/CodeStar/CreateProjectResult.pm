# Generated from json/callresult_class.tt

package Paws::CodeStar::CreateProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStar::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str, required => 1);
  has ProjectTemplateId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'ProjectTemplateId' => {
                                        'type' => 'Str'
                                      },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'ClientRequestToken' => 'clientRequestToken',
                       'ProjectTemplateId' => 'projectTemplateId',
                       'Id' => 'id',
                       'Arn' => 'arn'
                     },
  'IsRequired' => {
                    'Id' => 1,
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::CreateProjectResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the created project.


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project creation.


=head2 B<REQUIRED> Id => Str

The ID of the project.


=head2 ProjectTemplateId => Str

Reserved for future use.


=head2 _request_id => Str


=cut

1;