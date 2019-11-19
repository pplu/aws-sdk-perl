# Generated from default/object.tt
package Paws::CloudWatchLogs::QueryInfo;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::CloudWatchLogs::Types qw//;
  has CreateTime => (is => 'ro', isa => Int);
  has LogGroupName => (is => 'ro', isa => Str);
  has QueryId => (is => 'ro', isa => Str);
  has QueryString => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreateTime' => {
                                 'type' => 'Int'
                               },
               'QueryId' => {
                              'type' => 'Str'
                            },
               'LogGroupName' => {
                                   'type' => 'Str'
                                 },
               'QueryString' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'CreateTime' => 'createTime',
                       'QueryId' => 'queryId',
                       'LogGroupName' => 'logGroupName',
                       'QueryString' => 'queryString',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::QueryInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::QueryInfo object:

  $service_obj->Method(Att1 => { CreateTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::QueryInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CreateTime

=head1 DESCRIPTION

Information about one CloudWatch Logs Insights query that matches the
request in a C<DescribeQueries> operation.

=head1 ATTRIBUTES


=head2 CreateTime => Int

  The date and time that this query was created.


=head2 LogGroupName => Str

  The name of the log group scanned by this query.


=head2 QueryId => Str

  The unique ID number of this query.


=head2 QueryString => Str

  The query string used in this query.


=head2 Status => Str

  The status of this query. Possible values are C<Cancelled>,
C<Complete>, C<Failed>, C<Running>, C<Scheduled>, and C<Unknown>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

