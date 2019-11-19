# Generated from default/object.tt
package Paws::CloudSearch::SuggesterStatus;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudSearch::Types qw/CloudSearch_OptionStatus CloudSearch_Suggester/;
  has Options => (is => 'ro', isa => CloudSearch_Suggester, required => 1);
  has Status => (is => 'ro', isa => CloudSearch_OptionStatus, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Status' => 1,
                    'Options' => 1
                  },
  'types' => {
               'Options' => {
                              'type' => 'CloudSearch_Suggester',
                              'class' => 'Paws::CloudSearch::Suggester'
                            },
               'Status' => {
                             'type' => 'CloudSearch_OptionStatus',
                             'class' => 'Paws::CloudSearch::OptionStatus'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::SuggesterStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::SuggesterStatus object:

  $service_obj->Method(Att1 => { Options => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::SuggesterStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Options

=head1 DESCRIPTION

The value of a C<Suggester> and its current status.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Options => CloudSearch_Suggester

  


=head2 B<REQUIRED> Status => CloudSearch_OptionStatus

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

