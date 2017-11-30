package Paws::MQ::ListConfigurationRevisionsOutput;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', request_name => 'configurationId', traits => ['NameInRequest']);
  has MaxResults => (is => 'ro', isa => 'Int', request_name => 'maxResults', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest']);
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::MQ::ConfigurationRevision]', request_name => 'revisions', traits => ['NameInRequest']);
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


=head2 Revisions => ArrayRef[L<Paws::MQ::ConfigurationRevision>]

  The list of all revisions for the specified configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

