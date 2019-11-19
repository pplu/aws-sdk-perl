# Generated from default/object.tt
package Paws::QLDB::LedgerSummary;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDB::Types qw//;
  has CreationDateTime => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'CreationDateTime' => {
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

Paws::QLDB::LedgerSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDB::LedgerSummary object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDB::LedgerSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Information about a ledger, including its name, state, and when it was
created.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The date and time, in epoch time format, when the ledger was created.
(Epoch time format is the number of seconds elapsed since 12:00:00 AM
January 1, 1970 UTC.)


=head2 Name => Str

  The name of the ledger.


=head2 State => Str

  The current status of the ledger.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

