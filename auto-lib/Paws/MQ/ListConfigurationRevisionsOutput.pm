# Generated from default/object.tt
package Paws::MQ::ListConfigurationRevisionsOutput;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MQ::Types qw/MQ_ConfigurationRevision/;
  has ConfigurationId => (is => 'ro', isa => Str);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);
  has Revisions => (is => 'ro', isa => ArrayRef[MQ_ConfigurationRevision]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revisions' => {
                                'class' => 'Paws::MQ::ConfigurationRevision',
                                'type' => 'ArrayRef[MQ_ConfigurationRevision]'
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
             },
  'NameInRequest' => {
                       'Revisions' => 'revisions',
                       'ConfigurationId' => 'configurationId',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::ListConfigurationRevisionsOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::ListConfigurationRevisionsOutput object:

  $service_obj->Method(Att1 => { ConfigurationId => $value, ..., Revisions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::ListConfigurationRevisionsOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationId

=head1 DESCRIPTION

Returns a list of all revisions for the specified configuration.

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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

