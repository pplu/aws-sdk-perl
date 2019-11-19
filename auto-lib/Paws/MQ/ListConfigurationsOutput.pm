# Generated from default/object.tt
package Paws::MQ::ListConfigurationsOutput;
  use Moo;
  use Types::Standard qw/ArrayRef Int Str/;
  use Paws::MQ::Types qw/MQ_Configuration/;
  has Configurations => (is => 'ro', isa => ArrayRef[MQ_Configuration]);
  has MaxResults => (is => 'ro', isa => Int);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'Configurations' => 'configurations'
                     },
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
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

Paws::MQ::ListConfigurationsOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::ListConfigurationsOutput object:

  $service_obj->Method(Att1 => { Configurations => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::ListConfigurationsOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Configurations

=head1 DESCRIPTION

Returns a list of all configurations.

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[MQ_Configuration]

  The list of all revisions for the specified configuration.


=head2 MaxResults => Int

  The maximum number of configurations that Amazon MQ can return per page
(20 by default). This value must be an integer from 5 to 100.


=head2 NextToken => Str

  The token that specifies the next page of results Amazon MQ should
return. To request the first page, leave nextToken empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

