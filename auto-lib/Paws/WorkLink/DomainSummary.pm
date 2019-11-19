# Generated from default/object.tt
package Paws::WorkLink::DomainSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has CreatedTime => (is => 'ro', isa => Str, required => 1);
  has DisplayName => (is => 'ro', isa => Str);
  has DomainName => (is => 'ro', isa => Str, required => 1);
  has DomainStatus => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CreatedTime' => 1,
                    'DomainName' => 1,
                    'DomainStatus' => 1
                  },
  'types' => {
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'DomainStatus' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DomainSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkLink::DomainSummary object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., DomainStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkLink::DomainSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The summary of the domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

  The time that the domain was created.


=head2 DisplayName => Str

  The name to display.


=head2 B<REQUIRED> DomainName => Str

  The name of the domain.


=head2 B<REQUIRED> DomainStatus => Str

  The status of the domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

