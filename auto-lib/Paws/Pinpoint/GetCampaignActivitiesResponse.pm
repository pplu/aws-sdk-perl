# Generated from default/object.tt
package Paws::Pinpoint::GetCampaignActivitiesResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_ActivitiesResponse/;
  has ActivitiesResponse => (is => 'ro', isa => Pinpoint_ActivitiesResponse, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActivitiesResponse' => {
                                         'class' => 'Paws::Pinpoint::ActivitiesResponse',
                                         'type' => 'Pinpoint_ActivitiesResponse'
                                       }
             },
  'IsRequired' => {
                    'ActivitiesResponse' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetCampaignActivitiesResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::GetCampaignActivitiesResponse object:

  $service_obj->Method(Att1 => { ActivitiesResponse => $value, ..., ActivitiesResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::GetCampaignActivitiesResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ActivitiesResponse

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivitiesResponse => Pinpoint_ActivitiesResponse

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

