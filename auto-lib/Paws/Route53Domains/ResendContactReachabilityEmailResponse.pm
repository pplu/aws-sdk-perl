# Generated from json/callresult_class.tt

package Paws::Route53Domains::ResendContactReachabilityEmailResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Route53Domains::Types qw//;
  has DomainName => (is => 'ro', isa => Str);
  has EmailAddress => (is => 'ro', isa => Str);
  has IsAlreadyVerified => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsAlreadyVerified' => {
                                        'type' => 'Bool'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainName' => {
                                 'type' => 'Str'
                               },
               'EmailAddress' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'IsAlreadyVerified' => 'isAlreadyVerified',
                       'DomainName' => 'domainName',
                       'EmailAddress' => 'emailAddress'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ResendContactReachabilityEmailResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The domain name for which you requested a confirmation email.


=head2 EmailAddress => Str

The email address for the registrant contact at the time that we sent
the verification email.


=head2 IsAlreadyVerified => Bool

C<True> if the email address for the registrant contact has already
been verified, and C<false> otherwise. If the email address has already
been verified, we don't send another confirmation email.


=head2 _request_id => Str


=cut

1;