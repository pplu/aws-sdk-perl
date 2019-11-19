# Generated from default/object.tt
package Paws::Pinpoint::AttributesResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has Attributes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AttributeType => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AttributeType' => {
                                    'type' => 'Str'
                                  },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Attributes' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               }
             },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'AttributeType' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::AttributesResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::AttributesResource object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., AttributeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::AttributesResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the type and the names of attributes that
were removed from all the endpoints that are associated with an
application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application.


=head2 Attributes => ArrayRef[Str|Undef]

  An array that specifies the names of the attributes that were removed
from the endpoints.


=head2 B<REQUIRED> AttributeType => Str

  The type of attribute or attributes that were removed from the
endpoints. Valid values are:

=over

=item *

endpoint-custom-attributes - Custom attributes that describe endpoints

=item *

endpoint-custom-metrics - Custom metrics that your app reports to
Amazon Pinpoint for endpoints

=item *

endpoint-user-attributes - Custom attributes that describe users

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

