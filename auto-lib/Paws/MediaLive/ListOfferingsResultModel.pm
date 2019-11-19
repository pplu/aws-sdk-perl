# Generated from default/object.tt
package Paws::MediaLive::ListOfferingsResultModel;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_Offering/;
  has NextToken => (is => 'ro', isa => Str);
  has Offerings => (is => 'ro', isa => ArrayRef[MediaLive_Offering]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Offerings' => {
                                'class' => 'Paws::MediaLive::Offering',
                                'type' => 'ArrayRef[MediaLive_Offering]'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Offerings' => 'offerings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListOfferingsResultModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::ListOfferingsResultModel object:

  $service_obj->Method(Att1 => { NextToken => $value, ..., Offerings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::ListOfferingsResultModel object:

  $result = $service_obj->Method(...);
  $result->Att1->NextToken

=head1 DESCRIPTION

ListOfferings response

=head1 ATTRIBUTES


=head2 NextToken => Str

  Token to retrieve the next page of results


=head2 Offerings => ArrayRef[MediaLive_Offering]

  List of offerings



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

