# Generated from default/object.tt
package Paws::MQ::BrokerInstanceOptionsOutput;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str/;
  use Paws::MQ::Types qw/MQ_BrokerInstanceOption/;
  has BrokerInstanceOptions => (is => 'ro', isa => ArrayRef[MQ_BrokerInstanceOption]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'BrokerInstanceOptions' => {
                                            'class' => 'Paws::MQ::BrokerInstanceOption',
                                            'type' => 'ArrayRef[MQ_BrokerInstanceOption]'
                                          },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BrokerInstanceOptions' => 'brokerInstanceOptions',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::BrokerInstanceOptionsOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::BrokerInstanceOptionsOutput object:

  $service_obj->Method(Att1 => { BrokerInstanceOptions => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::BrokerInstanceOptionsOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerInstanceOptions

=head1 DESCRIPTION

Returns a list of broker instance options.

=head1 ATTRIBUTES


=head2 BrokerInstanceOptions => ArrayRef[MQ_BrokerInstanceOption]

  List of available broker instance options.


=head2 MaxResults => Int

  Required. The maximum number of instance options that can be returned
per page (20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

  The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

