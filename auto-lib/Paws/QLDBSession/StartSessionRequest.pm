# Generated from default/object.tt
package Paws::QLDBSession::StartSessionRequest;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::QLDBSession::Types qw//;
  has LedgerName => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LedgerName' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'LedgerName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::StartSessionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::StartSessionRequest object:

  $service_obj->Method(Att1 => { LedgerName => $value, ..., LedgerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::StartSessionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->LedgerName

=head1 DESCRIPTION

Specifies a request to start a a new session.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LedgerName => Str

  The name of the ledger to start a new session against.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

