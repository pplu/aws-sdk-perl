
package Paws::AppConfig::Application;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Application

=head1 ATTRIBUTES


=head2 Description => Str

The description of the application.


=head2 Id => Str

The application ID.


=head2 Name => Str

The application name.


=head2 _request_id => Str


=cut

