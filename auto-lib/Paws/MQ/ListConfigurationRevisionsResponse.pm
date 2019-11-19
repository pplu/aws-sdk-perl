
package Paws::MQ::ListConfigurationRevisionsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MQ::Types qw/MQ_ConfigurationRevision/;
  has ConfigurationId => (is => 'ro', isa => Str);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[MQ_ConfigurationRevision]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'ConfigurationId' => 'configurationId',
                       'Revisions' => 'revisions'
                     },
  'types' => {
               'Revisions' => {
                                'type' => 'ArrayRef[MQ_ConfigurationRevision]',
                                'class' => 'Paws::MQ::ConfigurationRevision'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ConfigurationId' => {
                                      'type' => 'Str'
                                    },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListConfigurationRevisionsResponse

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The unique ID that Amazon MQ generates for the configuration.


=head2 MaxResults => Int

The maximum number of configuration revisions that can be returned per
page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 Revisions => ArrayRef[MQ_ConfigurationRevision]

The list of all revisions for the specified configuration.


=head2 _request_id => Str


=cut

