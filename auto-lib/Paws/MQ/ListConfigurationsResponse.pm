
package Paws::MQ::ListConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MQ::Types qw/MQ_Configuration/;
  has Configurations => (is => 'ro', isa => ArrayRef[MQ_Configuration]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'Configurations' => 'configurations'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Configurations' => {
                                     'type' => 'ArrayRef[MQ_Configuration]',
                                     'class' => 'Paws::MQ::Configuration'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[MQ_Configuration]

The list of all revisions for the specified configuration.


=head2 MaxResults => Int

The maximum number of configurations that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.


=head2 _request_id => Str


=cut

