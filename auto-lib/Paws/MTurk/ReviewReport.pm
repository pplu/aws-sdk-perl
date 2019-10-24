# Generated from default/object.tt
package Paws::MTurk::ReviewReport;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_ReviewActionDetail MTurk_ReviewResultDetail/;
  has ReviewActions => (is => 'ro', isa => ArrayRef[MTurk_ReviewActionDetail]);
  has ReviewResults => (is => 'ro', isa => ArrayRef[MTurk_ReviewResultDetail]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReviewActions' => {
                                    'class' => 'Paws::MTurk::ReviewActionDetail',
                                    'type' => 'ArrayRef[MTurk_ReviewActionDetail]'
                                  },
               'ReviewResults' => {
                                    'class' => 'Paws::MTurk::ReviewResultDetail',
                                    'type' => 'ArrayRef[MTurk_ReviewResultDetail]'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ReviewReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::ReviewReport object:

  $service_obj->Method(Att1 => { ReviewActions => $value, ..., ReviewResults => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::ReviewReport object:

  $result = $service_obj->Method(...);
  $result->Att1->ReviewActions

=head1 DESCRIPTION

Contains both ReviewResult and ReviewAction elements for a particular
HIT.

=head1 ATTRIBUTES


=head2 ReviewActions => ArrayRef[MTurk_ReviewActionDetail]

  A list of ReviewAction objects for each action specified in the Review
Policy.


=head2 ReviewResults => ArrayRef[MTurk_ReviewResultDetail]

  A list of ReviewResults objects for each action specified in the Review
Policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

